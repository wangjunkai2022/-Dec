.class public Lcom/apk/e90;
.super Ljava/lang/Object;
.source "TrExpandTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/tr/comment/sdk/R$string;->tr_sdk_expand_more_txt:I

    invoke-static {p1}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    .line 3
    iget-object v0, v0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    .line 7
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    const v0, 0x7fffffff

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 9
    iget-object p1, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    .line 10
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->setExpand(Z)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    .line 14
    iget-object v1, v0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->do:Landroid/widget/TextView;

    .line 15
    iget v0, v0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->new:I

    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17
    iget-object v0, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    .line 18
    iget-object v0, v0, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    .line 21
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->if:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/apk/e90;->do:Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;

    invoke-virtual {p1, v0}, Lcom/tr/comment/sdk/commons/widget/TrExpandTextView;->setExpand(Z)V

    :goto_0
    return-void
.end method
