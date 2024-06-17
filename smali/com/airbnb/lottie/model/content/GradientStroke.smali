.class public final Lcom/airbnb/lottie/model/content/GradientStroke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field public final capType:I

.field public final dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final endPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final gradientColor:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final gradientType:I

.field public final hidden:Z

.field public final joinType:I

.field public final lineDashPattern:Ljava/util/List;

.field public final miterLimit:F

.field public final name:Ljava/lang/String;

.field public final opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final startPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;IIFLjava/util/ArrayList;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->name:Ljava/lang/String;

    iput p2, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientType:I

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientColor:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->startPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->endPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput p8, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->capType:I

    iput p9, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->joinType:I

    iput p10, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->miterLimit:F

    iput-object p11, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    iput-object p12, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-boolean p13, p0, Lcom/airbnb/lottie/model/content/GradientStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public final toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    new-instance p2, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientStroke;)V

    return-object p2
.end method
