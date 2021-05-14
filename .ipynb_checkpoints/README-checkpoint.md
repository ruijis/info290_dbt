Welcome to your new dbt project!!

### Using the starter project

#### Make sure to update the directory when using dbt run
#### i.e. --profiles-dir /home/jovyan/sp21/proj/proj5

Commands to execute our project on Datahub after cloning github repo to test on datahub:
rm -rf .ipynb_checkpoints/
dbt run --profiles-dir /home/jovyan/sp21/proj/proj5
dbt docs generate --profiles-dir /home/jovyan/sp21/proj/proj5
dbt docs serve --profiles-dir /home/jovyan/sp21/proj/proj5



### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
