.class public final Lcom/airbnb/lottie/model/content/ShapeFill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field public final color:Lcom/google/android/gms/internal/mlkit_common/zzpx;

.field public final fillEnabled:Z

.field public final fillType:Landroid/graphics/Path$FillType;

.field public final hidden:Z

.field public final name:Ljava/lang/String;

.field public final opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/google/android/gms/internal/mlkit_common/zzpx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillType:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->color:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iput-boolean p6, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->hidden:Z

    return-void
.end method


# virtual methods
.method public final toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    new-instance p2, Lcom/airbnb/lottie/animation/content/FillContent;

    invoke-direct {p2, p1, p3, p0}, Lcom/airbnb/lottie/animation/content/FillContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeFill;)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/ShapeFill;->fillEnabled:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
