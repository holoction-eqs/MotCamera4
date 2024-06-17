.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HumanEffectFusionConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    }
.end annotation


# instance fields
.field public cache_path:Ljava/lang/String;

.field public isBackCamera:Z

.field public isRealTime:Z

.field public log_level:I

.field public model_data:[B

.field public native_lib_path:Ljava/lang/String;

.field public power_mode:I

.field public sdkLoadType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    iput-object v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    return-void
.end method

.method public constructor <init>(Z[BLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    iput-boolean p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    iput-object p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    iput-object p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    iput-object p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    return-void
.end method

.method public constructor <init>(Z[BLjava/lang/String;Ljava/lang/String;ZLcom/anc/humansdk/fusion/SdkPowerMode;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    iput-boolean p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    iput-object p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    iput-object p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    iput-object p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    return-void
.end method

.method public constructor <init>([BZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    sget-object v0, Lcom/anc/humansdk/fusion/SdkPowerMode;->ANC_HUM_POWER_DEFAULT:Lcom/anc/humansdk/fusion/SdkPowerMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    iput-object p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    iput-boolean p2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    iput-object p3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    iput-object p4, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isBackCamera:Z

    return-void
.end method

.method public static Build()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;
    .locals 1

    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;

    invoke-direct {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig$HumanEffectFusionConfigBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setSdkLoadType(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    const-string v2, "null"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v1, 0x2

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->isRealTime:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->power_mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->sdkLoadType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "sdkCapability %d, model size %d, cache path %s, lib path %s, realtime %b, power %d, sdkLoadType:%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
