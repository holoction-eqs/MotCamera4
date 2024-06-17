.class public abstract Landroidx/media3/decoder/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/Buffer;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Landroidx/media3/decoder/Buffer;->$r8$classId:I

    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAtomTypeString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addFlag(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/decoder/Buffer;->flags:I

    return-void
.end method

.method public abstract createAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
.end method

.method public abstract dropAllTables(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
.end method

.method public final getFlag(I)Z
    .locals 0

    iget p0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDecodeOnly()Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public abstract onCreate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
.end method

.method public abstract onOpen(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
.end method

.method public abstract onPostMigrate()V
.end method

.method public abstract onPreMigrate(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
.end method

.method public abstract onValidateSchema(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)Landroidx/media3/common/FlagSet$Builder;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/media3/decoder/Buffer;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget p0, p0, Landroidx/media3/decoder/Buffer;->flags:I

    invoke-static {p0}, Landroidx/media3/decoder/Buffer;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
