.class public final Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final group:Landroidx/media3/common/TrackGroup;

.field public final tracks:[I

.field public final type:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;[I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v1, "ETSDefinition"

    const-string v2, "Empty tracks are not allowed"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    return-void
.end method
