.class public Lcom/apk/qf0;
.super Ljava/lang/Thread;
.source "Unzip.java"


# instance fields
.field public final synthetic do:Ljava/util/ArrayList;

.field public final synthetic for:Lcom/apk/pf0;

.field public final synthetic if:Lcom/apk/kf0;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcom/apk/rf0;


# direct methods
.method public constructor <init>(Lcom/apk/rf0;Ljava/lang/String;Ljava/util/ArrayList;Lcom/apk/pf0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/qf0;->try:Lcom/apk/rf0;

    iput-object p3, p0, Lcom/apk/qf0;->do:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apk/qf0;->if:Lcom/apk/kf0;

    iput-object p4, p0, Lcom/apk/qf0;->for:Lcom/apk/pf0;

    iput-object p5, p0, Lcom/apk/qf0;->new:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/qf0;->try:Lcom/apk/rf0;

    iget-object v1, p0, Lcom/apk/qf0;->do:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/apk/qf0;->for:Lcom/apk/pf0;

    iget-object v3, p0, Lcom/apk/qf0;->new:Ljava/lang/String;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/apk/rf0;->if(Ljava/util/ArrayList;Lcom/apk/kf0;Lcom/apk/pf0;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/apk/qf0;->for:Lcom/apk/pf0;

    .line 4
    invoke-virtual {v0}, Lcom/apk/pf0;->do()V
    :try_end_0
    .catch Lcom/apk/af0; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
