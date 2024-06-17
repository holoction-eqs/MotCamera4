.class public final Lcom/motorola/camera/detector/results/tidbit/Text;
.super Landroidx/loader/app/LoaderManager;
.source "SourceFile"


# static fields
.field public static mFormat:Lcom/google/zxing/BarcodeFormat;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/zxing/BarcodeFormat;)V
    .locals 0

    invoke-direct {p0}, Landroidx/loader/app/LoaderManager;-><init>()V

    sput-object p1, Lcom/motorola/camera/detector/results/tidbit/Text;->mFormat:Lcom/google/zxing/BarcodeFormat;

    return-void
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lcom/motorola/camera/detector/results/tidbit/Text;->mFormat:Lcom/google/zxing/BarcodeFormat;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "query"

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SEARCH:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    add-int/2addr p0, v0

    return p0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Text:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f120072

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text{text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Text;->text:Ljava/lang/String;

    const-string v1, "\', locale=null}"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
