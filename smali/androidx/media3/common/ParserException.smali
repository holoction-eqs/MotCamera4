.class public Landroidx/media3/common/ParserException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final contentIsMalformed:Z

.field public final dataType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p3, p0, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    iput p4, p0, Landroidx/media3/common/ParserException;->dataType:I

    return-void
.end method

.method public static createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;
    .locals 2

    new-instance v0, Landroidx/media3/common/ParserException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, v1}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    return-object v0
.end method

.method public static createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;
    .locals 4

    new-instance v0, Landroidx/media3/common/ParserException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    return-object v0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{contentIsMalformed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/ParserException;->dataType:I

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
