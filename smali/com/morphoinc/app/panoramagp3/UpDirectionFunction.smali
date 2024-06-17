.class public final Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;
.super Lcom/morphoinc/app/panoramagp3/DirectionFunction;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 3

    iput p7, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->$r8$classId:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p7, v1, :cond_2

    const/4 v2, 0x2

    if-eq p7, v2, :cond_1

    if-eq p7, v0, :cond_0

    invoke-direct/range {p0 .. p6}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;-><init>(IIIIII)V

    iput v2, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    return-void

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;-><init>(IIIIII)V

    iput v1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    return-void

    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;-><init>(IIIIII)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    return-void

    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;-><init>(IIIIII)V

    iput v0, p0, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    return-void
.end method
