.class public final Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final message:Landroidx/media3/exoplayer/PlayerMessage;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/4 v5, -0x1

    if-eq v3, v4, :cond_3

    if-eqz v0, :cond_2

    :goto_2
    move v1, v5

    :cond_2
    :goto_3
    move v2, v1

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget v3, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    sub-int/2addr v0, v3

    if-eqz v0, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    iget-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide p0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    cmp-long p0, v3, p0

    if-gez p0, :cond_6

    goto :goto_2

    :cond_6
    if-nez p0, :cond_2

    move v1, v2

    goto :goto_3

    :goto_4
    return v2
.end method
