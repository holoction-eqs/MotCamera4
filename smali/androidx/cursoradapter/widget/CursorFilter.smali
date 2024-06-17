.class public final Landroidx/cursoradapter/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mClient:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Ljava/lang/Object;

    check-cast p0, Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    check-cast p1, Landroid/database/Cursor;

    check-cast p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    iget-object v0, v0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Ljava/lang/Object;

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    check-cast v0, Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    check-cast v0, Landroidx/appcompat/widget/SuggestionsAdapter;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, v0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v3, v0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "SuggestionsAdapter"

    const-string v3, "Search suggestions query threw an exception."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    move-object v0, v5

    :goto_2
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v5, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_3
    return-object v1

    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    check-cast v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    if-eqz v4, :cond_4

    iget-object v3, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/ArrayList;

    goto/16 :goto_d

    :cond_4
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/ArrayList;

    const-string v4, "choices"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v6, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v6, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const/4 v7, -0x1

    invoke-direct {v6, v5, v7}, Lcom/motorola/camera/utility/search/BoundExtractedResult;-><init>(Ljava/lang/Object;I)V

    goto/16 :goto_b

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    new-array v9, v7, [[Ljava/lang/Integer;

    move v10, v2

    :goto_6
    if-ge v10, v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v8

    new-array v12, v11, [Ljava/lang/Integer;

    move v13, v2

    :goto_7
    if-ge v13, v11, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_6
    aput-object v12, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v8, v7, :cond_a

    move v10, v8

    :goto_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v8, v11, :cond_9

    move v12, v8

    :goto_9
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v14, v2, :cond_8

    aget-object v2, v9, v10

    aget-object v13, v9, v13

    aget-object v13, v13, v15

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v12

    goto :goto_a

    :cond_8
    aget-object v2, v9, v10

    aget-object v13, v9, v13

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v14, v9, v10

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Integer;->max(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v12

    :goto_a
    if-eq v12, v11, :cond_9

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    if-eq v10, v7, :cond_a

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aget-object v2, v9, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v2, :cond_b

    new-instance v6, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const/4 v2, 0x0

    invoke-direct {v6, v5, v2}, Lcom/motorola/camera/utility/search/BoundExtractedResult;-><init>(Ljava/lang/Object;I)V

    :goto_b
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_c
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    iget-object v1, v1, Lcom/motorola/camera/utility/search/BoundExtractedResult;->referent:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_d
    :goto_d
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v3, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    iget p1, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;

    move-object p1, p0

    check-cast p1, Landroidx/cursoradapter/widget/CursorAdapter;

    iget-object p1, p1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    check-cast p2, Landroid/database/Cursor;

    check-cast p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
