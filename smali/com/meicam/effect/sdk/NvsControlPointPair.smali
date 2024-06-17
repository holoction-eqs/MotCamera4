.class public Lcom/meicam/effect/sdk/NvsControlPointPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backwardControlPoint:Lcom/meicam/effect/sdk/NvsPointD;

.field public forwardControlPoint:Lcom/meicam/effect/sdk/NvsPointD;


# direct methods
.method public constructor <init>(Lcom/meicam/effect/sdk/NvsPointD;Lcom/meicam/effect/sdk/NvsPointD;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsControlPointPair;->backwardControlPoint:Lcom/meicam/effect/sdk/NvsPointD;

    iput-object p2, p0, Lcom/meicam/effect/sdk/NvsControlPointPair;->forwardControlPoint:Lcom/meicam/effect/sdk/NvsPointD;

    return-void
.end method
