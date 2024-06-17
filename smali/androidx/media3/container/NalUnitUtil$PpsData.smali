.class public final Landroidx/media3/container/NalUnitUtil$PpsData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bottomFieldPicOrderInFramePresentFlag:Z

.field public final seqParameterSetId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/container/NalUnitUtil$PpsData;->seqParameterSetId:I

    iput-boolean p3, p0, Landroidx/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    return-void
.end method
