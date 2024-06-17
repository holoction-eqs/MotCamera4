.class public final Lcom/google/android/material/progressindicator/DeterminateDrawable$1;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "indicatorLevel"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iget p0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->indicatorFraction:F

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    const p0, 0x461c4000    # 10000.0f

    div-float/2addr p2, p0

    iput p2, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;->indicatorFraction:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
