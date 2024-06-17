.class public final Lcom/google/android/material/appbar/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public layoutLeft:I

.field public layoutTop:I

.field public offsetTop:I

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final applyOffsets()V
    .locals 4

    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    iget-object v1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    sub-int/2addr v0, p0

    rsub-int/lit8 p0, v0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method
