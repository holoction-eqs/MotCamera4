.class public final Lcom/airbnb/lottie/model/content/CircleShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field public final hidden:Z

.field public final isReversed:Z

.field public final name:Ljava/lang/String;

.field public final position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

.field public final size:Lcom/google/android/gms/internal/mlkit_common/zzpx;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/google/android/gms/internal/mlkit_common/zzpx;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/CircleShape;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/CircleShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/CircleShape;->size:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/CircleShape;->isReversed:Z

    iput-boolean p5, p0, Lcom/airbnb/lottie/model/content/CircleShape;->hidden:Z

    return-void
.end method


# virtual methods
.method public final toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    new-instance p2, Lcom/airbnb/lottie/animation/content/EllipseContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/EllipseContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/CircleShape;)V

    return-object p2
.end method
