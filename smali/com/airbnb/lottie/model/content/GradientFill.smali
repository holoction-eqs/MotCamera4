.class public final Lcom/airbnb/lottie/model/content/GradientFill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field public final endPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final fillType:Landroid/graphics/Path$FillType;

.field public final gradientColor:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final gradientType:I

.field public final hidden:Z

.field public final name:Ljava/lang/String;

.field public final opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final startPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Path$FillType;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/airbnb/lottie/model/content/GradientFill;->gradientType:I

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/GradientFill;->fillType:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/GradientFill;->gradientColor:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/GradientFill;->opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/GradientFill;->startPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/GradientFill;->endPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientFill;->name:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/airbnb/lottie/model/content/GradientFill;->hidden:Z

    return-void
.end method


# virtual methods
.method public final toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/animation/content/GradientFillContent;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/airbnb/lottie/animation/content/GradientFillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientFill;)V

    return-object v0
.end method
