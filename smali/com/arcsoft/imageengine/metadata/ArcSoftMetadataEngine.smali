.class public abstract Lcom/arcsoft/imageengine/metadata/ArcSoftMetadataEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_arcsoft_metadata_engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static GetArcSoftMetadataBuffer(Ljava/lang/Object;)[B
    .locals 0

    invoke-static {p0}, Lcom/arcsoft/imageengine/metadata/ArcSoftMetadataEngine;->getArcSoftMetadataBuffer(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static native getArcSoftMetadataBuffer(Ljava/lang/Object;)[B
.end method
