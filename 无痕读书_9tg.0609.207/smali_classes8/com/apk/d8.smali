.class public Lcom/apk/d8;
.super Ljava/lang/Object;
.source "MyAccountActivity.java"

# interfaces
.implements Lcom/apk/vu;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/d8;->do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const p1, 0x7f10023d

    .line 1
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void
.end method

.method public if(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/d8;->do:Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;->l(Lcom/biquge/ebook/app/ui/activity/MyAccountActivity;)V

    return-void
.end method
