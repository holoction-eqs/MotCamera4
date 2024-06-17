.class public final Lcom/airbnb/lottie/model/content/Mask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final inverted:Z

.field public final maskMode:I

.field public final maskPath:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/model/content/Mask;->maskMode:I

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    return-void
.end method
