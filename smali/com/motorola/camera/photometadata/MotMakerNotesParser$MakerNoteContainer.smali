.class public final Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bytes:[B

.field public final count:I

.field public final type:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->type:I

    iput p2, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->count:I

    iput-object p3, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->bytes:[B

    return-void
.end method
