.class public final Lcom/adobe/xmp/options/AliasOptions;
.super Lcom/adobe/xmp/options/Options;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/AliasOptions;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/adobe/xmp/options/AliasOptions;->$r8$classId:I

    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValidOptions()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/options/AliasOptions;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x3d

    return p0

    :pswitch_0
    const/16 p0, 0x1700

    return p0

    :pswitch_1
    const/16 p0, 0x1e00

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
