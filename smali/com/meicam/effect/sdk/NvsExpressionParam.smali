.class public Lcom/meicam/effect/sdk/NvsExpressionParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;,
        Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;
    }
.end annotation


# static fields
.field public static final TYPE_BOOLEAN:I = 0x2

.field public static final TYPE_COLOR:I = 0x3

.field public static final TYPE_FLOAT:I = 0x1

.field public static final TYPE_INT:I


# instance fields
.field private mBoolean:Z

.field private mColor:Lcom/meicam/effect/sdk/NvsColor;

.field private mFloatParam:Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;

.field private mIntParam:Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lcom/meicam/effect/sdk/NvsColor;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->mColor:Lcom/meicam/effect/sdk/NvsColor;

    return-object p0
.end method

.method public getFloatParam()Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->mFloatParam:Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;

    return-object p0
.end method

.method public getIntParam()Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->mIntParam:Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->type:I

    return p0
.end method

.method public isBoolean()Z
    .locals 0

    iget-boolean p0, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->mBoolean:Z

    return p0
.end method

.method public setBoolean(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->mBoolean:Z

    return-void
.end method

.method public setColor(Lcom/meicam/effect/sdk/NvsColor;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->mColor:Lcom/meicam/effect/sdk/NvsColor;

    return-void
.end method

.method public setFloatParam(Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->mFloatParam:Lcom/meicam/effect/sdk/NvsExpressionParam$FloatParam;

    return-void
.end method

.method public setIntParam(Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->mIntParam:Lcom/meicam/effect/sdk/NvsExpressionParam$IntParam;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/meicam/effect/sdk/NvsExpressionParam;->type:I

    return-void
.end method
