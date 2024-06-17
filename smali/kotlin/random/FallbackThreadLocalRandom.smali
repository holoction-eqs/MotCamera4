.class public final Lkotlin/random/FallbackThreadLocalRandom;
.super Lkotlin/random/AbstractPlatformRandom;
.source "SourceFile"


# instance fields
.field public final implStorage:Lcom/airbnb/lottie/utils/Utils$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkotlin/random/AbstractPlatformRandom;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/utils/Utils$1;-><init>(I)V

    iput-object v0, p0, Lkotlin/random/FallbackThreadLocalRandom;->implStorage:Lcom/airbnb/lottie/utils/Utils$1;

    return-void
.end method


# virtual methods
.method public final getImpl()Ljava/util/Random;
    .locals 1

    iget-object p0, p0, Lkotlin/random/FallbackThreadLocalRandom;->implStorage:Lcom/airbnb/lottie/utils/Utils$1;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "implStorage.get()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Random;

    return-object p0
.end method
