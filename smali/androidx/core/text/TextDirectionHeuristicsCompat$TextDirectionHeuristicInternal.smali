.class public final Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final mDefaultIsRtl:Z


# direct methods
.method public constructor <init>(Lkotlin/UInt$Companion;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    iput-boolean p2, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return-void
.end method


# virtual methods
.method public final defaultIsRtl()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return p0
.end method
