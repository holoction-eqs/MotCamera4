.class public Lcom/meicam/effect/sdk/NvsFxDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsFxDescription$ParamInfoObject;
    }
.end annotation


# instance fields
.field m_fxDescription:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsFxDescription;->m_fxDescription:J

    return-void
.end method

.method private native nativeGetAllParamsInfo(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsFxDescription$ParamInfoObject;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetName(J)Ljava/lang/String;
.end method


# virtual methods
.method public getAllParamsInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsFxDescription$ParamInfoObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsFxDescription;->m_fxDescription:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFxDescription;->nativeGetAllParamsInfo(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsFxDescription;->m_fxDescription:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFxDescription;->nativeGetName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFxDescription(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsFxDescription;->m_fxDescription:J

    return-void
.end method
