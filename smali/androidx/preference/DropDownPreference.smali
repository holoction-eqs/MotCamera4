.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source "SourceFile"


# instance fields
.field public final mAdapter:Landroid/widget/ArrayAdapter;

.field public final mItemSelectedListener:Landroidx/appcompat/widget/SearchView$9;

.field public mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0401b3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroidx/appcompat/widget/SearchView$9;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Landroidx/appcompat/widget/SearchView$9;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->mItemSelectedListener:Landroidx/appcompat/widget/SearchView$9;

    new-instance p2, Landroid/widget/ArrayAdapter;

    const v0, 0x1090009

    invoke-direct {p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    array-length p1, p0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final notifyChanged()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p0, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a03c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->mItemSelectedListener:Landroidx/appcompat/widget/SearchView$9;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    iget-object v2, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v4, v2

    add-int/2addr v4, v3

    :goto_0
    if-ltz v4, :cond_1

    aget-object v5, v2, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public final onClick()V
    .locals 0

    iget-object p0, p0, Landroidx/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method

.method public final setEntries([Ljava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
