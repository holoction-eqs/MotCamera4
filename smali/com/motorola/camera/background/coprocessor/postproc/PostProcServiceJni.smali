.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 >2\u00020\u0001:\u0003>?@B\u0011\u0012\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u0008<\u0010=J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0019\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0086 J\t\u0010\u000b\u001a\u00020\tH\u0086 J#\u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0086 J\u0011\u0010\u0012\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0086 J\u0011\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\tH\u0086 J\u0011\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0004H\u0086 J)\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\tH\u0086 J\u0011\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u0004H\u0086 J\u0011\u0010 \u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0004H\u0086 J\u0011\u0010\"\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u0004H\u0086 J\u0010\u0010%\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010#J\u0010\u0010&\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010#J\u0006\u0010\'\u001a\u00020\u001dJ\n\u0010(\u001a\u0004\u0018\u00010#H\u0016J \u0010-\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0004H\u0016R\u0019\u0010/\u001a\u0004\u0018\u00010.8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R#\u00105\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u0002038\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u001c\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010#098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;\u00a8\u0006A"
    }
    d2 = {
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;",
        "",
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;",
        "jobRequest",
        "",
        "extractAppContext",
        "product",
        "",
        "staticConfig",
        "",
        "initialize",
        "deinitialize",
        "Lcom/motorola/camera/background/common/JobId;",
        "jobid",
        "jobDescription",
        "Lcom/motorola/camera/shared/PostProcTransferData;",
        "transferData",
        "processJob",
        "processJobCancel",
        "logdDD",
        "setLogDDFlag",
        "logAD",
        "setLogADFlag",
        "mask0",
        "mask1",
        "mask2",
        "mask3",
        "setDebugDumpFlags",
        "mlModelsJson",
        "",
        "setMlModelsList",
        "cacheDir",
        "setCacheDir",
        "filesDir",
        "setFilesDir",
        "Lcom/motorola/camera/background/common/msg/IBgMsgIntf;",
        "client",
        "addClient",
        "deleteClient",
        "cleanUp",
        "msgIntf",
        "jobId",
        "Lcom/motorola/camera/background/common/ReturnCode;",
        "returnCode",
        "resultDescription",
        "processJobComplete",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "",
        "Lcom/motorola/camera/background/common/TaskId;",
        "mJobsList",
        "Ljava/util/Map;",
        "getMJobsList",
        "()Ljava/util/Map;",
        "",
        "clients",
        "Ljava/util/List;",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "JobRequest",
        "MsgHandler",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field private static mNativeContext:J


# instance fields
.field private final clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/common/msg/IBgMsgIntf;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final mJobsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/common/TaskId;",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HpT69JTMunSzVvw871MIqDPYcvo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deleteClient$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    const-class v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v0, "bg-postproc-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->context:Landroid/content/Context;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getIdentity$cp()Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-object v0
.end method

.method public static final synthetic access$getMNativeContext$cp()J
    .locals 2

    sget-wide v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    return-wide v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setMNativeContext$cp(J)V
    .locals 0

    sput-wide p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    return-void
.end method

.method private static final deleteClient$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final extractAppContext(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    if-ne v0, v1, :cond_3

    iget-object p0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/settings/CacheBehavior;->parseMsg(Ljava/lang/String;)Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    :cond_3
    return-object p0
.end method


# virtual methods
.method public final addClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cleanUp()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final native deinitialize()I
.end method

.method public final deleteClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    new-instance v0, Landroidx/work/JobListenableFuture$1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;-><init>(ILandroidx/work/JobListenableFuture$1;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getMJobsList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/common/TaskId;",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    return-object p0
.end method

.method public final native initialize(Ljava/lang/String;[B)I
.end method

.method public msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final native processJob(Lcom/motorola/camera/background/common/JobId;Ljava/lang/String;Lcom/motorola/camera/shared/PostProcTransferData;)I
.end method

.method public final native processJobCancel(Lcom/motorola/camera/background/common/JobId;)I
.end method

.method public processJobComplete(Lcom/motorola/camera/background/common/JobId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V
    .locals 10

    const-string v0, "jobId"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnCode"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultDescription"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/background/common/JobId;->toTaskId()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    iget-object v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    :try_start_0
    invoke-direct {p0, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->extractAppContext(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage;->$r8$clinit:I

    const-string v5, "appContext"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    invoke-direct {v5, v3, p3, p2}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V

    sget-object v3, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$Companion;

    invoke-virtual {v6}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_1

    sget-object v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v5, v3, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    new-instance v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage;

    invoke-direct {v3}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage;-><init>()V

    iget-object v8, v3, Lcom/motorola/camera/background/common/msg/MsgBase;->type:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {p1}, Lcom/motorola/camera/background/common/JobId;->toTaskId()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v7

    sget-object v6, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v4 .. v9}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v5, v5, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " processJobComplete() exception: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Client is not available to send message to"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mJobsList:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final native setCacheDir(Ljava/lang/String;)V
.end method

.method public final native setDebugDumpFlags(IIII)I
.end method

.method public final native setFilesDir(Ljava/lang/String;)V
.end method

.method public final native setLogADFlag(Ljava/lang/String;)I
.end method

.method public final native setLogDDFlag(I)I
.end method

.method public final native setMlModelsList(Ljava/lang/String;)V
.end method
