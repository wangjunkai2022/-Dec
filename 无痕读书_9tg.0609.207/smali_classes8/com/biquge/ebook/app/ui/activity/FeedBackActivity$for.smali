.class public Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;
.super Ljava/lang/Object;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public final synthetic new:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->new:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->if:I

    .line 3
    iput p1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->for:I

    .line 4
    iput p2, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->do:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->do:I

    if-le v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->do:I

    sub-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->if:I

    iget v2, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->for:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 4
    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->new:Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity;->number_tips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/200"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->if:I

    .line 2
    iput p4, p0, Lcom/biquge/ebook/app/ui/activity/FeedBackActivity$for;->for:I

    return-void
.end method
