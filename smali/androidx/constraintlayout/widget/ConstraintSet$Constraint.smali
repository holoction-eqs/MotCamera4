.class public final Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

.field public mCustomConstraints:Ljava/util/HashMap;

.field public mViewId:I

.field public final motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

.field public final propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

.field public final transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v3, :cond_0

    iget-object v4, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-nez v4, :cond_0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    :goto_0
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    return-object v0
.end method
