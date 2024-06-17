.class public final Lcom/motorola/camera/analytics/Attributes/LongAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mMandatory:Z

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->mMandatory:Z

    return-void
.end method


# virtual methods
.method public final record(Landroid/os/Bundle;Ljava/lang/Long;)V
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_0
    iget-boolean v2, p0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->mMandatory:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 2
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method public final bridge synthetic record(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/analytics/Attributes/LongAttribute;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    return-void
.end method
