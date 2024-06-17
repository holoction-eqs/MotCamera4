.class public final Lcom/motorola/camera/utility/lens/LensApiV1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/utility/lens/LensApiWrapper;


# static fields
.field public static final Companion:Lkotlin/UByte$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final api:Lcom/google/lens/sdk/LensApi;

.field public status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/UByte$Companion;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/UByte$Companion;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiV1;->Companion:Lkotlin/UByte$Companion;

    const-class v0, Lcom/motorola/camera/utility/lens/LensApiV1;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiV1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/lens/sdk/LensApi;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-direct {v0, v1}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/utility/lens/LensApiV1;->api:Lcom/google/lens/sdk/LensApi;

    return-void
.end method


# virtual methods
.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/utility/lens/LensApiV1;->status:I

    return p0
.end method

.method public final isAvailable(Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/motorola/camera/utility/lens/LensApiV1$isAvailable$2$1;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/utility/lens/LensApiV1$isAvailable$2$1;-><init>(Lcom/motorola/camera/utility/lens/LensApiV1;Lkotlin/coroutines/SafeContinuation;)V

    iget-object p0, p0, Lcom/motorola/camera/utility/lens/LensApiV1;->api:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {p0, p1}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final launch(Landroid/app/Activity;Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/utility/lens/LensApiV1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/motorola/camera/utility/lens/LensApiV1$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/motorola/camera/utility/lens/LensApiV1;->api:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {p0, p1, v0}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V

    return-void
.end method

.method public final onLaunchResult(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
