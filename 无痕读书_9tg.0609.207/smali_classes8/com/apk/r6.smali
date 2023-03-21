.class public final synthetic Lcom/apk/r6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

.field public final synthetic for:Z

.field public final synthetic if:Ljava/util/List;

.field public final synthetic new:Z


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;Ljava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/r6;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

    iput-object p2, p0, Lcom/apk/r6;->if:Ljava/util/List;

    iput-boolean p3, p0, Lcom/apk/r6;->for:Z

    iput-boolean p4, p0, Lcom/apk/r6;->new:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/apk/r6;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

    iget-object v1, p0, Lcom/apk/r6;->if:Ljava/util/List;

    iget-boolean v2, p0, Lcom/apk/r6;->for:Z

    iget-boolean v3, p0, Lcom/apk/r6;->new:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->this(Ljava/util/List;ZZ)V

    return-void
.end method
