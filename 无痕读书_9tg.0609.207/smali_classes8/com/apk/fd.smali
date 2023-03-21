.class public Lcom/apk/fd;
.super Ljava/lang/Object;
.source "RedBgImageDialog.java"

# interfaces
.implements Lcom/apk/vu;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/fd;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

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
    iget-object p1, p0, Lcom/apk/fd;->do:Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;->break(Lcom/biquge/ebook/app/ui/view/RedBgImageDialog;)V

    return-void
.end method
