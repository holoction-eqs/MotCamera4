.class public final enum Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkLoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

.field public static final enum ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

.field public static final enum ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

.field public static final enum ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    const-string v1, "ANC_LOAD_TYPE_DLOEPN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    new-instance v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    const-string v2, "ANC_LOAD_TYPE_ANDROID_DLOPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    new-instance v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    const-string v3, "ANC_LOAD_TYPE_VNDKSUPPORT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->ANC_LOAD_TYPE_VNDKSUPPORT:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    filled-new-array {v0, v1, v2}, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    move-result-object v0

    sput-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->$VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getObject(I)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->values()[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid sdk load type: "

    invoke-static {v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;
    .locals 1

    const-class v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    return-object p0
.end method

.method public static values()[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;
    .locals 1

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->$VALUES:[Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    invoke-virtual {v0}, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method
