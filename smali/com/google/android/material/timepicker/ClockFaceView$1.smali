.class public final Lcom/google/android/material/timepicker/ClockFaceView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    iget v1, v1, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    sub-int/2addr p0, v1

    iget v1, v0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandPadding:I

    sub-int/2addr p0, v1

    iget v1, v0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    if-eq p0, v1, :cond_1

    iput p0, v0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->updateLayoutParams()V

    iget p0, v0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    iget-object v0, v0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    iput p0, v0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return v2
.end method
