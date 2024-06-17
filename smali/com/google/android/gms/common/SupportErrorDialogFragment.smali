.class public Lcom/google/android/gms/common/SupportErrorDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public zaa:Landroid/app/Dialog;

.field public zab:Landroid/content/DialogInterface$OnCancelListener;

.field public zac:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zab:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final onCreateDialog()Landroid/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zaa:Landroid/app/Dialog;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    iget-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zac:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zac:Landroid/app/AlertDialog;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/SupportErrorDialogFragment;->zac:Landroid/app/AlertDialog;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final show(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    invoke-virtual {v2, v0, p0, p2, v1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void
.end method
