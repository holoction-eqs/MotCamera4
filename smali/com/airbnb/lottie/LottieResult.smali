.class public final Lcom/airbnb/lottie/LottieResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final exception:Ljava/lang/Throwable;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/airbnb/lottie/LottieResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/airbnb/lottie/LottieResult;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieResult;->exception:Ljava/lang/Throwable;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
