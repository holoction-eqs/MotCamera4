.class public final Lcom/motorola/camera/detector/results/tidbit/Contact;
.super Landroidx/loader/app/LoaderManager;
.source "SourceFile"


# instance fields
.field public addressTypes:[Ljava/lang/String;

.field public addresses:[Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public emailTypes:[Ljava/lang/String;

.field public emails:[Ljava/lang/String;

.field public geo:[Ljava/lang/String;

.field public instantMessenger:Ljava/lang/String;

.field public names:[Ljava/lang/String;

.field public nicknames:[Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public org:Ljava/lang/String;

.field public phoneNumbers:[Ljava/lang/String;

.field public phoneTypes:[Ljava/lang/String;

.field public pronunciation:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public urls:[Ljava/lang/String;


# direct methods
.method public static getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    if-ne p1, v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "smsto"

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "tel"

    :goto_1
    invoke-static {v5, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v4, Landroid/util/Pair;

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/ArrayList;)V

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static validArray([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static validString(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static vcardEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const-string v2, "\\,;"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "\\r\\n|\\r|\\n"

    const-string v1, "\\\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "finishActivityOnSaveCompleted"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_0

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "name"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    const-string v12, "WORK"

    const-string v13, "HOME"

    const-string v14, "CELL"

    const-string v15, "data2"

    const-string v8, "data1"

    const-string v9, "mimetype"

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    :goto_2
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length v10, v6

    if-ge v7, v10, :cond_f

    aget-object v6, v6, v7

    iget-object v10, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    array-length v11, v10

    if-ge v7, v11, :cond_d

    aget-object v10, v10, v7

    if-nez v10, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v4, 0x1f8162

    if-eq v11, v4, :cond_8

    const v4, 0x21ecdf

    if-eq v11, v4, :cond_6

    const v4, 0x28bf11

    if-eq v11, v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x2

    goto :goto_4

    :cond_6
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :goto_3
    const/4 v4, -0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_c

    const/4 v10, 0x1

    if-eq v4, v10, :cond_b

    const/4 v10, 0x2

    if-eq v4, v10, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x2

    goto :goto_6

    :cond_b
    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    const/4 v4, 0x4

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v4, 0x3

    :goto_6
    invoke-static {v6}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_7

    :cond_e
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_f
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    :goto_8
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v7, v6

    if-ge v4, v7, :cond_1b

    aget-object v6, v6, v4

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    array-length v10, v7

    if-ge v4, v10, :cond_19

    aget-object v7, v7, v4

    if-nez v7, :cond_10

    goto :goto_b

    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_9

    :sswitch_0
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_9

    :cond_11
    const/4 v7, 0x3

    goto :goto_a

    :sswitch_1
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_9

    :cond_12
    const/4 v7, 0x2

    goto :goto_a

    :sswitch_2
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_9

    :cond_13
    const/4 v7, 0x1

    goto :goto_a

    :sswitch_3
    const-string v10, "FAX"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_9

    :cond_14
    const/4 v7, 0x0

    goto :goto_a

    :goto_9
    const/4 v7, -0x1

    :goto_a
    if-eqz v7, :cond_18

    const/4 v10, 0x1

    if-eq v7, v10, :cond_17

    const/4 v10, 0x2

    if-eq v7, v10, :cond_16

    const/4 v10, 0x3

    if-eq v7, v10, :cond_15

    goto :goto_b

    :cond_15
    const/4 v7, 0x3

    goto :goto_c

    :cond_16
    const/4 v7, 0x1

    goto :goto_c

    :cond_17
    const/4 v7, 0x2

    goto :goto_c

    :cond_18
    const/4 v7, 0x4

    goto :goto_c

    :cond_19
    :goto_b
    const/4 v7, 0x7

    :goto_c
    invoke-static {v6}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_d

    :cond_1a
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_1b
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x0

    :goto_e
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v7, v6

    if-ge v4, v7, :cond_1e

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_f

    :cond_1c
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    array-length v10, v7

    if-ge v4, v10, :cond_1d

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v7, v7, v4

    const-string v10, "data3"

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1e
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "im_handle"

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_1f
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "company"

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_20
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "job_title"

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_21
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "notes"

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_22
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_24

    aget-object v10, v4, v7

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_23

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "vnd.android.cursor.item/website"

    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_24
    iget-object v4, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v4, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v5, 0x1

    :cond_26
    const/4 v3, 0x0

    if-eqz v5, :cond_27

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_27

    new-instance v4, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v5, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->CONTACT:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v4, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto :goto_11

    :cond_27
    move-object v4, v3

    :goto_11
    if-eqz v4, :cond_28

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->DIAL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {v0, v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v2

    const-string v4, ": "

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto/16 :goto_14

    :cond_2a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_12
    iget-object v6, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2d

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-string v9, "mailto"

    invoke-static {v9, v7, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v7, v7, v8

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.extra.EMAIL"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v6}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_2c

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v5, v8, :cond_2b

    aget-object v7, v7, v5

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    new-instance v7, Landroid/util/Pair;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_2b
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_13
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_2d
    new-instance v5, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    sget-object v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->EMAIL:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v5, v6, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/ArrayList;)V

    goto :goto_15

    :cond_2e
    :goto_14
    move-object v5, v3

    :goto_15
    if-eqz v5, :cond_2f

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SMS:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-static {v0, v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getDialOrSmsAction(Lcom/motorola/camera/detector/results/tidbit/Contact;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;)Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Url;->getUrlAction(Ljava/lang/String;)Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    move-result-object v2

    goto :goto_16

    :cond_31
    move-object v2, v3

    :goto_16
    if-eqz v2, :cond_32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getShareAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getCopyString(Z)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f120035

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_34

    new-instance v6, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v2, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_17

    :cond_34
    move-object v6, v3

    :goto_17
    if-eqz v6, :cond_35

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const-string v5, "android.intent.action.VIEW"

    if-eqz v2, :cond_36

    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_36

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    goto/16 :goto_1a

    :cond_36
    const/4 v6, 0x0

    iget-object v2, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_18
    iget-object v3, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v7, v3

    if-ge v6, v7, :cond_39

    aget-object v3, v3, v6

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "geo:0,0?q="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_37

    aget-object v7, v7, v6

    invoke-static {v7}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    new-instance v7, Landroid/util/Pair;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :cond_37
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_19
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_39
    new-instance v3, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->LOCATION:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/ArrayList;)V

    :cond_3a
    :goto_1a
    if-eqz v3, :cond_3b

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x10efd -> :sswitch_3
        0x1f8162 -> :sswitch_2
        0x21ecdf -> :sswitch_1
        0x28bf11 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getCopyString(Z)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f120058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const p1, 0x7f120051

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v0, p1, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f120052

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    invoke-static {v0, p1, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120054

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    invoke-static {p1, v5, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0x7f120066

    const-string v6, ""

    if-eqz p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length p1, p1

    new-array v7, p1, [Ljava/lang/String;

    move v8, v3

    :goto_0
    if-ge v8, p1, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v10, :cond_1

    array-length v11, v10

    if-ge v8, v11, :cond_1

    aget-object v10, v10, v8

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v12, v12, v8

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    move-object v10, v6

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const p1, 0x7f120065

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v7, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length p1, p1

    new-array v7, p1, [Ljava/lang/String;

    move v8, v3

    :goto_2
    if-ge v8, p1, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    if-eqz v10, :cond_4

    array-length v11, v10

    if-ge v8, v11, :cond_4

    aget-object v10, v10, v8

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v12, v12, v8

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_4
    move-object v10, v6

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    const p1, 0x7f120059

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v7, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const p1, 0x7f120050

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-static {p1, v7, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const p1, 0x7f120053

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {p1, v7, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length p1, p1

    new-array v7, p1, [Ljava/lang/String;

    move v8, v3

    :goto_4
    if-ge v8, p1, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    if-eqz v10, :cond_7

    array-length v11, v10

    if-ge v8, v11, :cond_7

    aget-object v10, v10, v8

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v12, v12, v8

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_7
    move-object v10, v6

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    const p1, 0x7f12004d

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "\n"

    invoke-static {v0, p1, v7, v5}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const p1, 0x7f12004f

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {p1, v5, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const p1, 0x7f120055

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {p1, v5, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const p1, 0x7f12004e

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {p1, v5, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const p1, 0x7f120056

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v0, p1, v5, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f120062

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    invoke-static {v0, p1, p0, v2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    if-ge v3, p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->getCopyString(Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    if-eqz v2, :cond_3

    array-length v2, v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    if-eqz v2, :cond_4

    array-length v2, v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    if-eqz v2, :cond_7

    array-length v2, v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move v3, v1

    :goto_a
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    if-eqz v2, :cond_b

    array-length v2, v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    if-eqz p0, :cond_c

    array-length v1, p0

    :cond_c
    add-int/2addr v0, v1

    return v0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->Contact:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getShareAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "vcard.vcf"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "BEGIN:VCARD\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "VERSION:3.0\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ";"

    const/4 v5, 0x0

    const-string v6, "\r\n"

    if-eqz v3, :cond_5

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    array-length v9, v8

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "N:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    array-length v8, v7

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_7

    const-string v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-static {v10}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NICKNAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, ":"

    if-eqz v3, :cond_c

    move v3, v5

    :goto_4
    :try_start_3
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_c

    aget-object v8, v8, v3

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    if-eqz v9, :cond_b

    array-length v10, v9

    if-ge v3, v10, :cond_b

    aget-object v9, v9, v3

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EMAIL;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EMAIL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v5

    :goto_7
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_f

    aget-object v8, v8, v3

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_9

    :cond_d
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    if-eqz v9, :cond_e

    array-length v10, v9

    if-ge v3, v10, :cond_e

    aget-object v9, v9, v3

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TEL;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_8
    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TEL:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v5

    :goto_a
    iget-object v8, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    array-length v9, v8

    if-ge v3, v9, :cond_12

    aget-object v8, v8, v3

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_c

    :cond_10
    iget-object v9, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    if-eqz v9, :cond_11

    array-length v10, v9

    if-ge v3, v10, :cond_11

    aget-object v9, v9, v3

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ADR;TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_b
    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_c

    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ADR:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validArray([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    array-length v7, v3

    move v8, v5

    :goto_d
    if-ge v8, v7, :cond_14

    aget-object v9, v3, v8

    invoke-static {v9}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_e

    :cond_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_14
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    if-eqz v3, :cond_15

    array-length v7, v3

    const/4 v8, 0x1

    if-le v7, v8, :cond_15

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GEO:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v5, v7, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_15
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ORG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_16
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TITLE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_17
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BDAY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_18
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/Contact;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/Contact;->vcardEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_19
    const-string p0, "END:VCARD\r\n"

    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance p0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/motorola/camera/Util;->getUriForFile(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->isSupported(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    :cond_1a
    return-object v1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_f

    :catchall_1
    move-exception p0

    :goto_f
    if-eqz v1, :cond_1b

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_1b
    throw p0

    :catch_0
    move-object v2, v1

    :catch_1
    if-eqz v2, :cond_1c

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_1c
    :goto_10
    return-object v1
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f12006d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Contact{names="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->names:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nicknames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->nicknames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pronunciation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->pronunciation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', phoneNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->phoneTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emails:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emailTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->emailTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instantMessenger=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->instantMessenger:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', note=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->note:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addresses:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->addressTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", org=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->org:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', birthday=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->urls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/Contact;->geo:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
