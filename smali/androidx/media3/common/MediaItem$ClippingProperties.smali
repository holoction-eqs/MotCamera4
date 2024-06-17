.class public final Landroidx/media3/common/MediaItem$ClippingProperties;
.super Landroidx/media3/common/MediaItem$ClippingConfiguration;
.source "SourceFile"


# static fields
.field public static final UNSET:Landroidx/media3/common/MediaItem$ClippingProperties;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$ClippingProperties;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    sput-object v1, Landroidx/media3/common/MediaItem$ClippingProperties;->UNSET:Landroidx/media3/common/MediaItem$ClippingProperties;

    return-void
.end method
