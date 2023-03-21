.class public Lcom/biquge/ebook/app/ui/webread/view/WebContentView$for;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->continue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$for;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$for;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/TaskInfo;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$for;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$for;->if:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/biquge/ebook/app/bean/TaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apk/kf;->this(Lcom/biquge/ebook/app/bean/TaskInfo;)Z

    return-void
.end method
