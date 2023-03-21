.class public Lcom/apk/oe;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/apk/uv;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/oe;->if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iput-object p2, p0, Lcom/apk/oe;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/oe;->if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->do:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/apk/goto;->interface(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/oe;->do:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/apk/oe;->if:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->getCurUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->try(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
