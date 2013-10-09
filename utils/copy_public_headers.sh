#!/bin/sh

SCRIPT_DIR=`dirname $0`
ROOT_DIR="$SCRIPT_DIR/.."
SRC_DIR="$ROOT_DIR/handlebars-objc"

DEST_DIR="$1"

mkdir -p "$DEST_DIR"
for i in module.map HBHandlebars.h runtime/HBTemplate.h runtime/HBExecutionContext.h context/HBDataContext.h helpers/HBHelper.h helpers/HBHelperRegistry.h helpers/HBHelperCallingInfo.h partials/HBPartial.h partials/HBPartialRegistry.h ; do
  cp "$SRC_DIR/$i" "$DEST_DIR"
done