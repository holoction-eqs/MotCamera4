.class public Lcom/meicam/effect/sdk/NvsControlPointModePair;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ControlPointMode_Bezier:I = 0x1

.field public static final ControlPointMode_Linear:I


# instance fields
.field public backwardControlPointMode:I

.field public forwardControlPointMode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/meicam/effect/sdk/NvsControlPointModePair;->backwardControlPointMode:I

    iput p2, p0, Lcom/meicam/effect/sdk/NvsControlPointModePair;->forwardControlPointMode:I

    return-void
.end method
