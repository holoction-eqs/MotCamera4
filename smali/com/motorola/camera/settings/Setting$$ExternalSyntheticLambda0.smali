.class public final synthetic Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/settings/Setting;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/settings/Setting;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_1
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void

    :goto_2
    check-cast p1, Landroid/util/Size;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->handleVideoResolution(Lcom/motorola/camera/settings/Setting;Landroid/util/Size;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
