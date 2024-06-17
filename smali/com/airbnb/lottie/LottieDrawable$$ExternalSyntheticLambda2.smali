.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->$r8$classId:I

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    return-void

    :goto_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
