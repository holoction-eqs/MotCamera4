.class public final Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "SourceFile"


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

.field public final popupElevation:F

.field public final simpleItemLayout:I

.field public simpleItemSelectedColor:I

.field public simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

.field public final tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const v0, 0x7f04004a

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzme;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v4, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView:[I

    const v6, 0x7f130395

    new-array v7, v1, [I

    const v5, 0x7f04004a

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_0
    const v0, 0x7f0d0097

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemLayout:I

    const v0, 0x7f0703bf

    const/4 v4, 0x1

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->popupElevation:F

    const/4 v0, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    const v5, 0x7f040300

    invoke-direct {v0, p1, v2, v5, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    iput-boolean v4, v0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    iget-object p1, v0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iput-object p0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Landroidx/appcompat/widget/SearchView$8;

    invoke-direct {p1, p0, v4}, Landroidx/appcompat/widget/SearchView$8;-><init>(Landroid/view/View;I)V

    iput-object p1, v0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setSimpleItems(I)V

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static access$100(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public final dismissDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    :cond_1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :goto_1
    return-void
.end method

.method public final findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getPopupElevation()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->popupElevation:F

    return p0
.end method

.method public getSimpleItemSelectedColor()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    return p0
.end method

.method public getSimpleItemSelectedRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, v5, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    :goto_0
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    add-int/lit8 v6, v6, 0xf

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v7, v6, -0xf

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    move v9, v7

    move-object v10, v8

    move v7, v2

    :goto_1
    if-ge v9, v6, :cond_4

    invoke-interface {v0, v9}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v11

    if-eq v11, v2, :cond_2

    move-object v10, v8

    move v2, v11

    :cond_2
    invoke-interface {v0, v9, v10, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v11, :cond_3

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {v10, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v7, v0

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v2, v0, v7

    :cond_6
    :goto_2
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_7
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p0

    iput-object p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBoxBackgroundIfNeeded()V

    :cond_0
    return-void
.end method

.method public setSimpleItemSelectedColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->updateSelectedItemColorStateList()V

    :cond_0
    return-void
.end method

.method public setSimpleItemSelectedRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->updateSelectedItemColorStateList()V

    :cond_0
    return-void
.end method

.method public setSimpleItems(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setSimpleItems([Ljava/lang/String;)V

    return-void
.end method

.method public setSimpleItems([Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemLayout:I

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;-><init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final showDropDown()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    :cond_1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    :goto_1
    return-void
.end method
