.class public final Lcom/airbnb/lottie/model/content/ShapeStroke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field public final capType:I

.field public final color:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final hidden:Z

.field public final joinType:I

.field public final lineDashPattern:Ljava/util/List;

.field public final miterLimit:F

.field public final name:Ljava/lang/String;

.field public final offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/ArrayList;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;IIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->lineDashPattern:Ljava/util/List;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->color:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iput p7, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->capType:I

    iput p8, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->joinType:I

    iput p9, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->miterLimit:F

    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/ShapeStroke;->hidden:Z

    return-void
.end method


# virtual methods
.method public final toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    new-instance p2, Lcom/airbnb/lottie/animation/content/StrokeContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/StrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeStroke;)V

    return-object p2
.end method
