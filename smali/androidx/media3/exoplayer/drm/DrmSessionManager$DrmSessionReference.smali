.class public interface abstract Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
