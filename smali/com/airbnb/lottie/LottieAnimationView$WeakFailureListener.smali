.class public final Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final targetReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 1

    iput p2, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;->targetReference:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;->targetReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;->targetReference:Ljava/lang/ref/WeakReference;

    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    if-nez p0, :cond_2

    sget-object p0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;

    :cond_2
    invoke-interface {p0, p1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :goto_1
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
