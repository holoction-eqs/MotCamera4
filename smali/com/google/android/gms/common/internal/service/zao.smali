.class public final Lcom/google/android/gms/common/internal/service/zao;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/TelemetryLoggingClient;


# static fields
.field public static final zae:Landroidx/core/view/MenuHostHelper;

.field public static final zae$1:Landroidx/core/view/MenuHostHelper;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, L_COROUTINE/ArtificialStackFrames;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/signin/zaa;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/zaa;-><init>(I)V

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/String;Lcom/google/android/gms/signin/zaa;L_COROUTINE/ArtificialStackFrames;)V

    sput-object v2, Lcom/google/android/gms/common/internal/service/zao;->zae:Landroidx/core/view/MenuHostHelper;

    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, L_COROUTINE/ArtificialStackFrames;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/signin/zaa;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/zaa;-><init>(I)V

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    const-string v3, "ModuleInstall.API"

    invoke-direct {v2, v3, v1, v0}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/String;Lcom/google/android/gms/signin/zaa;L_COROUTINE/ArtificialStackFrames;)V

    sput-object v2, Lcom/google/android/gms/common/internal/service/zao;->zae$1:Landroidx/core/view/MenuHostHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/service/zao;->zae$1:Landroidx/core/view/MenuHostHelper;

    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    sget-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Landroidx/core/view/MenuHostHelper;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/common/internal/service/zao;->zae:Landroidx/core/view/MenuHostHelper;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Landroidx/core/view/MenuHostHelper;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method


# virtual methods
.method public varargs areModulesAvailable([Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/tasks/zzw;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Please provide at least one OptionalModuleApi."

    invoke-static {v4, v3}, Landroidx/room/util/DBUtil;->checkArgument(Ljava/lang/String;Z)V

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    const-string v5, "Requested API must not be null."

    invoke-static {v4, v5}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zaa(Ljava/util/List;Z)Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->zab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;-><init>(IZ)V

    new-instance p1, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/internal/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzu;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/base/zav;->zaa:Lcom/google/android/gms/common/Feature;

    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    const/16 v1, 0x6aa5

    iput v1, v0, Lcom/google/android/gms/common/internal/zzu;->zzc:I

    iput-boolean v2, v0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    new-instance v1, Landroidx/work/impl/StartStopTokens;

    const/16 v3, 0x8

    invoke-direct {v1, v3, p0, p1}, Landroidx/work/impl/StartStopTokens;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzu;->build()Lcom/google/android/gms/common/internal/zzu;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zae(ILcom/google/android/gms/common/internal/zzu;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p0

    return-object p0
.end method

.method public log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzu;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/base/zaf;->zaa:Lcom/google/android/gms/common/Feature;

    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/internal/zzu;->zzb:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/common/internal/zzu;->zzd:Z

    new-instance v1, Lcom/google/common/base/Joiner;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v2}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/google/android/gms/common/internal/zzu;->zza:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzu;->build()Lcom/google/android/gms/common/internal/zzu;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zae(ILcom/google/android/gms/common/internal/zzu;)Lcom/google/android/gms/tasks/zzw;

    move-result-object p0

    return-object p0
.end method
