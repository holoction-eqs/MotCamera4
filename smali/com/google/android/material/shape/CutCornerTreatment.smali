.class public final Lcom/google/android/material/shape/CutCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/CornerTreatment;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCornerPath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 4

    mul-float p0, p2, p1

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FFF)V

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    float-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-float p2, v0

    const/4 v0, 0x0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, p0

    double-to-float p0, v0

    invoke-virtual {p3, p2, p0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method
