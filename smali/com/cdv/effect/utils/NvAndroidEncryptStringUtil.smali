.class public Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HW_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

.field public static final MZR16_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

.field public static final OPLUS_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

.field public static final OP_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;


# instance fields
.field private isBase64:Z

.field private value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    const-string v1, "T1BQTw=="

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->OP_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    new-instance v0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    const-string v1, "T05FUExVUw=="

    invoke-direct {v0, v2, v1}, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->OPLUS_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    new-instance v0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    const-string v1, "SFVBV0VJ"

    invoke-direct {v0, v2, v1}, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->HW_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    new-instance v0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    const-string v1, "TUVJWlUgUzY="

    invoke-direct {v0, v2, v1}, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->MZR16_ENCODE:Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->isBase64:Z

    iput-object p2, p0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->value:Ljava/lang/String;

    return-void
.end method

.method public static equals(Ljava/lang/String;Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->isBase64:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->value:Ljava/lang/String;

    return-object p0
.end method

.method public isBase64()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->isBase64:Z

    return p0
.end method

.method public setBase64(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->isBase64:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/utils/NvAndroidEncryptStringUtil;->value:Ljava/lang/String;

    return-void
.end method
