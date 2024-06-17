.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Controller;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;ZI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/Controller;

    iput-boolean p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-boolean p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/Controller;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :goto_1
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
