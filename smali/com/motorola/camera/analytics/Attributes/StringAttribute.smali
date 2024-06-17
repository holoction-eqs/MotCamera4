.class public final Lcom/motorola/camera/analytics/Attributes/StringAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mDefault:Ljava/lang/String;

.field public final mMandatory:Z

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mDefault:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    iput-object p3, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mDefault:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic record(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public final record(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mDefault:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mDefault:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Uuid:%s, IsPrimary:%b, Filepath:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
