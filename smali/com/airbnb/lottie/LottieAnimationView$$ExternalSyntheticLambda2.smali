.class public final synthetic Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "asset_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    :goto_0
    return-object p0

    :goto_1
    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
