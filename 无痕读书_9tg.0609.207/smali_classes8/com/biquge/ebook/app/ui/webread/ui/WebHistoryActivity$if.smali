.class public Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WebHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/biquge/ebook/app/bean/TxtCollect;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c0132

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/biquge/ebook/app/bean/TxtCollect;

    .line 2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/TxtCollect;->getTitle()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09035d

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/TxtCollect;->getUrl()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09035e

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const/4 p2, 0x1

    new-array v0, p2, [I

    const/4 v1, 0x0

    const v2, 0x7f09035c

    aput v2, v0, v1

    .line 4
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array p2, p2, [I

    const v0, 0x7f09035a

    aput v0, p2, v1

    .line 5
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method
