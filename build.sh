#!/bin/bash

# Function to prepare for build
prebuild() {
    export DOCC_JSON_PRETTYPRINT="YES"
}

# Function to build for local environment
build_local() {
    xcrun docc convert . --transform-for-static-hosting

    # Create a redirect page for the home page
    redirect_path='/documentation/home'
    html_content="<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta http-equiv=\"refresh\" content=\"0;url=$redirect_path\"><title>Redirecting...</title></head><body><p>If you are not redirected automatically, follow this <a href=\"$redirect_path\">link</a>.</p></body></html>"
    echo "$html_content" > .docc-build/index.html
    echo "$html_content" > .docc-build/documentation/index.html
}

# Function to build for deployment
build_deploy() {
    xcrun docc convert . --transform-for-static-hosting --output-dir docs --hosting-base-path "Portfolio"

    # Create a redirect page for the home page
    redirect_path='/Portfolio/documentation/home'
    html_content="<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta http-equiv=\"refresh\" content=\"0;url=$redirect_path\"><title>Redirecting...</title></head><body><p>If you are not redirected automatically, follow this <a href=\"$redirect_path\">link</a>.</p></body></html>"
    echo "$html_content" > docs/index.html
    echo "$html_content" > docs/documentation/index.html
}

# Function to run the program
run_program() {
    cd .docc-build
    python3 -m http.server
    cd ..
}

# Function to perform a git commit
git_commit() {
    # build the deployment version
    echo "Building the deployment version..."
    prebuild
    build_deploy
    message="$1"
    git add -A
    echo "Committing changes with message: $message"
    git commit -m "$message"
    echo "Changes committed"
}

# Parse command line arguments
build_type="all"
run=true
commit=false
commit_message=""

while [[ $# -gt 0 ]]; do
    case $1 in
        --build)
            build_type="$2"
            shift
            ;;
        --norun)
            run=false
            ;;
        --commit)
            commit=true
            commit_message="$2"
            shift
            ;;
        *)
            echo "Invalid argument: $1"
            exit 1
            ;;
    esac
    shift
done

# Commit ignores all other options
if $commit; then
    git_commit "$commit_message"
    exit 0
fi

# Build based on specified options
case $build_type in
    local)
        echo "Building for only local environment"
        prebuild
        build_local
        echo "Build complete"
        ;;
    deploy)
        echo "Building for only deployment. The program will not be run."
        prebuild
        build_deploy
        echo "Build complete"
        exit 0
        ;;
    all)
        build_local
        build_deploy
        echo "Full build complete"
        ;;
    none)
        echo "Build stage skipped"
        ;;
    *)
        echo "Invalid build type: $build_type"
        exit 1
        ;;
esac

# Run the program if required
if $run; then
    echo "Running the program. The home page is located at http://localhost:8000/documentation/home/"
    run_program
fi
